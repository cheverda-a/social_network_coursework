<?php 
include("includes/admin_header.php");
?>

<head>
    <title>Trends and Statistics</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- Include any additional libraries if required -->
</head>


<style>
    .trends-graphic {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        min-width: 300px;
    }

    .trends-graphic_column {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        min-width: 500px;
        max-width: 500px;
    }
    
    .trend {
        width: 30%;
        margin-bottom: 10px;
        padding: 5px;
        background-color: #f2f2f2;
        border-radius: 5px;
    }
    
    .trend-title {
        font-weight: bold;
        font-size: 14px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        margin-bottom: 5px;
    }
    
    .trend-hits {
        font-size: 12px;
        color: grey;
    }
</style>

<div class="user_details column">
    <h4>Popular</h4>

    <div class="trends">
        <?php 
            $query = mysqli_query($con, "SELECT * FROM trends ORDER BY hits DESC LIMIT 9");
            foreach ($query as $row) {    
                $word = $row['title'];
                $hits = $row['hits'];
                $word_dot = strlen($word) >= 14 ? "..." : "";

                $trimmed_word = str_split($word, 14);
                $trimmed_word = $trimmed_word[0];

                echo "<div style='padding: 1px'>";
                echo $trimmed_word . $word_dot;
                echo "<div style='padding: 1px; font-size: 12px;'>";
                echo "Number of mentions: " . $hits;
                echo "<br></div></div><br>";
            }

        ?>
    </div>
</div>


<div class="main_column column" style="margin-bottom: 15px; ">

	<h4>Statistics</h4>
	<p>
		Here you can check general stats!
	</p>

    <form id="chartsForm" action="" method="POST">
    <input type="submit" name="button_charts" value="Draw Graphs" class="deep_blue settings_submit">

    <div class="trends-graphic_column" style="width: 600px; height: 200px;">
    <canvas id="trendsChart"></canvas>
</div>
</form>

<script>
    document.getElementById('chartsForm').addEventListener('submit', function(e) {
        e.preventDefault(); // Prevent form submission

        // Chart generation code here

        // Generate Trends Chart
        generateTrendsChart();

        // Generate Likes Chart
        generateLikesChart();

        // Generate Active Users Chart
        generateActiveUsersChart();
    });

    // Function to generate the Trends Chart
    function generateTrendsChart() {
        // PHP code to retrieve trend data
        <?php
        $trendData = [];
        $query = mysqli_query($con, "SELECT * FROM trends ORDER BY hits DESC LIMIT 9");

        foreach ($query as $row) {
            $word = $row['title'];
            $hits = $row['hits'];
            $trendData[] = ['word' => $word, 'hits' => $hits];
        }
        ?>

        // JavaScript code to create the Trends Chart
        var trendData = <?php echo json_encode($trendData); ?>;

        var trendLabels = trendData.map(function(item) {
            var word = item.word.length >= 14 ? item.word.substring(0, 14) + '...' : item.word;
            return word;
        });

        var trendHits = trendData.map(function(item) {
            return item.hits;
        });

        var ctxTrends = document.getElementById('trendsChart').getContext('2d');
        var trendsChart = new Chart(ctxTrends, {
            type: 'bar',
            data: {
                labels: trendLabels,
                datasets: [{
                    label: 'Number of Mentions',
                    data: trendHits,
                    backgroundColor: 'rgba(54, 162, 235, 0.8)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        precision: 0
                    }
                }
            }
        });
    }

    // Function to generate the Likes Chart
    function generateLikesChart() {
        // PHP code to retrieve most liked posts data
        <?php
        $likesData = [];
        $query = mysqli_query($con, "SELECT p.id AS post_id, COUNT(l.id) AS like_count
                                    FROM posts p
                                    LEFT JOIN likes l ON p.id = l.post_id
                                    INNER JOIN users u ON p.added_by = u.username
                                    GROUP BY p.id
                                    ORDER BY like_count DESC
                                    LIMIT 5");

        foreach ($query as $row) {
            $post_id = $row['post_id'];
            $like_count = $row['like_count'];
            $likesData[] = ['post_id' => $post_id, 'like_count' => $like_count];
        }
        ?>

        // JavaScript code to create the Likes Chart
        var likesData = <?php echo json_encode($likesData); ?>;

        var postLabels = likesData.map(function(item) {
            return item.post_id;
        });

        var likeCounts = likesData.map(function(item) {
            return item.like_count;
        });

        var ctxLikes = document.getElementById('likesChart').getContext('2d');
        var likesChart = new Chart(ctxLikes, {
            type: 'bar',
            data: {
                labels: postLabels,
                datasets: [{
                    label: 'Number of Likes',
                    data: likeCounts,
                    backgroundColor: 'rgba(255, 99, 132, 0.8)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        precision: 0
                    }
                }
            }
        });
    }

    // Function to generate the Active Users Chart
    function generateActiveUsersChart() {
        // PHP code to retrieve most active users data
        <?php
        $activeUsersData = [];
        $query = mysqli_query($con, "SELECT added_by, COUNT(*) AS post_count 
                                    FROM posts 
                                    WHERE posts.deleted = 'no'
                                    GROUP BY added_by 
                                    ORDER BY post_count DESC 
                                    LIMIT 5");

        foreach ($query as $row) {
            $user = $row['added_by'];
            $post_count = $row['post_count'];
            $activeUsersData[] = ['user' => $user, 'post_count' => $post_count];
        }
        ?>

        // JavaScript code to create the Active Users Chart
        var activeUsersData = <?php echo json_encode($activeUsersData); ?>;

        var userLabels = activeUsersData.map(function(item) {
            return item.user;
        });

        var postCounts = activeUsersData.map(function(item) {
            return item.post_count;
        });

        var ctxActiveUsers = document.getElementById('activeUsersChart').getContext('2d');
        var activeUsersChart = new Chart(ctxActiveUsers, {
            type: 'bar',
            data: {
                labels: userLabels,
                datasets: [{
                    label: 'Number of Posts',
                    data: postCounts,
                    backgroundColor: 'rgba(75, 192, 192, 0.8)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        precision: 0
                    }
                }
            }
        });
    }
</script>



</div>

<div class="main_column column" style="margin-bottom: 15px;">

	<h4>Most liked posts</h4>
	<p>
		Here you can see most liked posts on Pleiades!
	</p>

    <div class="liked">
        <?php 
        $query = mysqli_query($con, "SELECT p.id AS post_id, p.body, u.username, COUNT(l.id) AS like_count
                                    FROM posts p
                                    LEFT JOIN likes l ON p.id = l.post_id
                                    INNER JOIN users u ON p.added_by = u.username
                                    GROUP BY p.id
                                    ORDER BY like_count DESC
                                    LIMIT 5");

        foreach ($query as $row) {
            $post_id = $row['post_id'];
            $body = $row['body'];
            $username = $row['username'];
            $like_count = $row['like_count'];

            echo "<div style='padding-left: 5px'>";
            echo "<a href='post.php?id=" . $post_id . "'>Post ID: " . $post_id . "</a>";
            echo "</div>";
            echo "<div style='padding-left: 5px; color: grey; font-size: 11px;'>";
            echo "Number of likes: " . $like_count;
            echo "</div><br>";
        }
        ?>
    </div>

</div>

<div class="main_column column" style="margin-bottom: 15px;">

	<h4>Users who wrote most posts</h4>
	<p>
		Here you can see most active users on Pleiades!
	</p>

    <div class="users">
        <?php
        $query = mysqli_query($con, 
        "SELECT added_by, COUNT(*) AS post_count 
        FROM posts 
        WHERE posts.deleted = 'no'
        GROUP BY added_by 
        ORDER BY post_count 
        DESC LIMIT 5");

        foreach ($query as $row) {
            $user = $row['added_by'];
            $post_count = $row['post_count'];

            echo "<div style='padding-left: 5px'>";
            echo "<a href='user_profile.php?profile_username=$user&unblock_user=yes'>$user</a>";
            echo "<br></div>";
            echo "<div style='padding-left: 5px; color: grey; font-size: 11px;'>";
            echo "Number of posts: " . $post_count;
            echo "</div><br>";
        }
        ?>
    </div>
</div>

<div class="main_column column" style="margin-bottom: 15px;">

	<h4>Users with most posts</h4>
	<p>
		Here you can see users who have the most posts on their page!
	</p>

    <div class="liked">
    <?php 
    $query = mysqli_query($con, "SELECT users.username, users.first_name, users.last_name, 
                                COUNT(DISTINCT posts.id) AS post_count
                                FROM users
                                LEFT JOIN posts ON users.username = posts.added_by OR users.username = posts.user_to
                                WHERE posts.deleted = 'no'
                                GROUP BY users.username
                                ORDER BY post_count DESC
                                LIMIT 5");

    while ($row = mysqli_fetch_assoc($query)) {
        $user = $row['username'];
        $username = $row['first_name'] . " " . $row['last_name'];
        $post_count = $row['post_count'];

        echo "<div style='padding-left: 5px'>";
        echo "<a href='user_profile.php?profile_username=$user&unblock_user=yes'>$username</a>";
        echo "</div>";
        echo "<div style='padding-left: 5px; color: grey; font-size: 11px;'>";
        echo "Number of posts: " . $post_count;
        echo "</div><br>";
    }
    ?>
</div>




</div>



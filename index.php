<?php
include("includes/header.php");

if(isset($_POST['post'])){

	$uploadOk = 1;
	$imageName = $_FILES['fileToUpload']['name'];
	$errorMessage = "";

	if($imageName != "") {
		$targetDir = "assets/images/posts/";
		$imageName = $targetDir . uniqid() . basename($imageName);
		$imageFileType = pathinfo($imageName, PATHINFO_EXTENSION);

		if($_FILES['fileToUpload']['size'] > 10000000) {
			$errorMessage = "Sorry your file is too large";
			$uploadOk = 0;
		}

		if(strtolower($imageFileType) != "jpeg" && strtolower($imageFileType) != "png" && strtolower($imageFileType) != "jpg") {
			$errorMessage = "Sorry, only jpeg, jpg and png files are allowed";
			$uploadOk = 0;
		}

		if($uploadOk) {
			
			if(move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $imageName)) {
				//image uploaded okay
			}
			else {
				//image did not upload
				$uploadOk = 0;
			}
		}

	}

	if($uploadOk) {
		$post = new Post($con, $userLoggedIn);
		$post->submitPost($_POST['post_text'], 'none', $imageName);
	}
	else {
		echo "<div style='text-align:center;' class='alert alert-danger'>
				$errorMessage
			</div>";
	}

}

if ($userLoggedIn == 'admin') {
    header("Location: admin.php?");
}

if(isset($_GET['sort'])){
    $sort = $_GET['sort'];
}
else {
    $sort = 1;
}


?>

<style>
    .trends-graphic {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        max-width: 600px;
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
            <a href="<?php echo $userLoggedIn?>">
                <img src="<?php  echo $user['profile_pic']; ?>" alt="profile picture">
            </a>
          
            <div class="user_details_left_right">

                <a href="<?php echo $userLoggedIn?>" class="username" style='font-weight: bold;'>
                    <?php
                    echo  $user['first_name'] . " " . $user['last_name'];
                    ?>
                </a>
                <br>
                <a href="">
                    <?php
                    echo "Posts: " . $user['num_posts'];
                    ?>
                </a>
                
                <br>
                <a href="">
                    <?php
                    echo "Likes: " . $user['num_likes'];
                    ?>
                </a>
            </div>
        </div>

        <div class="main_column column" style='background-color: transparent;'>
            <form class="post_form" action="index.php" method="POST" enctype="multipart/form-data">
                <input type="file" name="fileToUpload" id="fileToUpload">
                <textarea name="post_text" id="post_text" placeholder="Got something to say?" style=' font-family: "HelveticaNeueCyr-Light";'></textarea>
                <br>
                <input type="submit" name="post" id="post_button" value="Post now">
            </form>

            <?php 
            if ($sort == 2) {
                echo '<a href="index.php?sort=1" >
                <button id="sortRecent" class="recent" >
                <i class="fa-solid fa-arrow-up-1-9"></i>
                </button>
                </a>';
            }
            else if ($sort == 1) {
                echo '<a href="index.php?sort=2">
                <button id="sortOldest" class="recent">
                <i class="fa-solid fa-arrow-down-9-1"></i>
                </button></a>';
            }
            
            ?>

            <div class="posts_area"></div>
            <?php var_dump($sort); ?>
            <img id='loading' src="assets/images/icons/loading.gif">
	    </div>

        <div class="trends-graphic user_details column">

            <h4 style="margin-right: 100%;">Popular</h4>

                <?php 
                $query = mysqli_query($con, "SELECT * FROM trends ORDER BY hits DESC LIMIT 9");

                foreach ($query as $row) {
                    $word = $row['title'];
                    $hits = $row['hits'];
                    $word_dot = strlen($word) >= 14 ? "..." : "";
                    $trimmed_word = substr($word, 0, 14);

                    echo "<div class='trend'>";
                    echo "<div class='trend-title'>" . $trimmed_word . $word_dot . "</div>";
                    echo "<div class='trend-hits'>Number of mentions: " . $hits . "</div>";
                    echo "</div>";
                }
                ?>
        </div>

</div>

        


    <script>
        var userLoggedIn = '<?php echo $userLoggedIn; ?>';
        var sort = '<?php echo $sort; ?>';
        console.log(sort);
        
        $(document).ready(function() {

            $('#loading').show();

            //Original ajax request for loading first posts 
            $.ajax({
                url: "includes/handlers/ajax_load_posts.php",
                type: "POST",
                data: "page=1&userLoggedIn=" + userLoggedIn + "&sort=" + sort,
                cache:false,

                success: function(data) {
                    $('#loading').hide();
                    $('.posts_area').html(data);
                }
            });

            $(window).scroll(function() {
                var height = $('.posts_area').height(); //Div containing posts
                var scroll_top = $(this).scrollTop();
                var page = $('.posts_area').find('.nextPage').val();
                var noMorePosts = $('.posts_area').find('.noMorePosts').val();

                if ((document.body.scrollHeight == document.body.scrollTop + window.innerHeight) && noMorePosts == 'false') {
                    $('#loading').show();

                    var ajaxReq = $.ajax({
                        url: "includes/handlers/ajax_load_posts.php",
                        type: "POST",
                        data: "page=" + page + "&userLoggedIn=" + userLoggedIn + "&sort=" + sort,
                        cache:false,

                        success: function(response) {
                            $('.posts_area').find('.nextPage').remove(); //Removes current .nextpage 
                            $('.posts_area').find('.noMorePosts').remove(); //Removes current .nextpage 

                            $('#loading').hide();
                            $('.posts_area').append(response);
                        }
                    });

                } //End if 

                return false;

            }); //End (window).scroll(function())


        });

    </script>


    </div>
</body>
</html>
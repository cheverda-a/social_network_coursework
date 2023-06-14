<?php 
include("includes/admin_header.php");
?>

<?php
// MySQL database credentials
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'social_network';

// Backup filename and directory
$backupDir = 'C:/xampp/htdocs/course_work/assets/backup/';
$backupFile = $backupDir . 'backup_' . date('Y-m-d_H-i-s') . '.sql';

// Create a MySQL database backup
function backupDatabase($host, $username, $password, $database, $backupFile)
{
    // Connect to MySQL server
    $conn = new mysqli($host, $username, $password, $database);
    if ($conn->connect_error) {
        die('Connection failed: ' . $conn->connect_error);
    }

    // Execute SQL query to get all table names
    $tables = array();
    $result = $conn->query("SHOW TABLES");
    while ($row = $result->fetch_row()) {
        $tables[] = $row[0];
    }

    // Iterate through each table and generate SQL statements
    $sqlScript = '';
    foreach ($tables as $table) {
        $result = $conn->query("SELECT * FROM $table");
        $numFields = $result->field_count;

        $sqlScript .= "DROP TABLE IF EXISTS $table;";
        $row2 = $conn->query("SHOW CREATE TABLE $table")->fetch_row();
        $sqlScript .= "\n\n" . $row2[1] . ";\n\n";

        for ($i = 0; $i < $numFields; $i++) {
            while ($row = $result->fetch_row()) {
                $sqlScript .= "INSERT INTO $table VALUES(";
                for ($j = 0; $j < $numFields; $j++) {
                    $row[$j] = $conn->real_escape_string($row[$j]);
                    if (isset($row[$j])) {
                        $sqlScript .= '"' . $row[$j] . '"';
                    } else {
                        $sqlScript .= '""';
                    }
                    if ($j < ($numFields - 1)) {
                        $sqlScript .= ',';
                    }
                }
                $sqlScript .= ");\n";
            }
        }
        $sqlScript .= "\n";
    }

    // Save the SQL script to a backup file
    file_put_contents($backupFile, $sqlScript);

    // Close MySQL connection
    $conn->close();
}

// Handle the backup button click event
if (isset($_POST['button_backup'])) {
    backupDatabase($host, $username, $password, $database, $backupFile);
    echo "Backup created successfully.";
}
?>

<div class="main_column column">

	<h4>Administration</h4>
	<p>
		Creating backup.
	</p>

	<form action="" method="POST">
        <input type="submit" name="button_backup" value="Backup" class="deep_blue settings_submit">
    </form>


</div>

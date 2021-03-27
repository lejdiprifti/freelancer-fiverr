<html>

<head>
    <title>
        Approval Submission Form
    </title>
</head>

<body>
    <h1> Submitted </h1>
    <h3>Status:</h3>



    <?php
    session_start();
    if (isset($_POST["approval"])) {
        $approvalStatus = $_POST["approval"];
        echo $approvalStatus;
    }
    ?>
    <br />
    <h3>Comments:</h3>

    <?php
    if (isset($_POST["comments"])) {
        $comments = $_POST["comments"];
        echo $comments;
    }
    ?>
</body>

</html>
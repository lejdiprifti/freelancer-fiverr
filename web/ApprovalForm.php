<html>

<head>
    <title>
        Sean's Library
    </title>
</head>
<style>
    .sean-page {
        margin-left: 30px;
    }
    .approval-submit-row {
        display: flex;
        flex-direction: row;
        margin-top: 15px;
    }

    .approval-radio-button {
        width: 120px;
    }
</style>

<body>
    <div class="sean-page">
        <h1>Approval Form</h1>
        <iframe width="420" height="315" src="https://www.youtube.com/embed/GanvWvIPjAY">
            <a href="header.jsp"></a>
            <link href="style/formstyle.css" rel="stylesheet" type="text/css"/>
        </iframe>
        <div class="sean-page">
            <a href='TermsAndConditions.php'>Terms and Conditions</a>
        </div>
        <?php
        session_start();
        if (isset($_SESSION["hasTermsBeenViewed"])) {
        ?>
            <form method="post" action="ApprovalFormSubmit.php">
                <br />
                <textarea placeholder="Comments" name="comments" rows="4" cols="50"></textarea>
                <br />
                <div class="approval-submit-row">
                    <div class="approval-radio-button">
                        <input type="radio" name="approval" <?php if (isset($approval) && $approval == "approved") echo "checked"; ?> value="Approved" required>Approve
                    </div>
                    <div class="approval-radio-button">
                        <input type="radio" name="approval" <?php if (isset($approval) && $approval == "disapproved") echo "checked"; ?> value="Disapproved" required>Disapproved
                    </div>
                    <input type="submit" value="Submit">
                </div>
            </form>
            <!-- Example Comment -->
        <?php
        }
        ?>

    </div>
</body>

</html>
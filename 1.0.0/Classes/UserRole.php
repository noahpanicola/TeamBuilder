<?php

Class UserRole {

    public $ID;
    public $UserID;
    public $RoleID;
    public $Login;
    public $Email;
    public $Password;
    public $IsActive;

    function __construct($em) {
        $this->setDefaults();
        $this->populate($em);
    }

    function setDefaults() {
        $this->ID = -1;
        $this->UserID = -1;
        $this->RoleID = -1;
        $this->Login = '';
        $this->Email = '';
        $this->Password = '';
        $this->IsActive = '';
    }

    function populate($em) {
        include '/Applications/MAMP/htdocs/1.0.0/Config/CONFIG.php';

        $conn = new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
        $query = "SELECT * FROM UserRole WHERE Email=?";

        if ($conn->connect_error) {
        	echo "mysql: error connecting to db";
        	return FALSE;
    	}

    	$stmt = $conn->prepare($query);
    	$stmt->bind_param("s", $em);
    	$stmt->execute();

    	$result = $stmt->get_result();
    	$exists = $result->num_rows;
        if($exists != 1){ return FALSE; }

        while ($row = $result->fetch_assoc()) {
        	$this->ID = $row["ID"];
            $this->UserID = $row["UserID"];
            $this->RoleID = $row["RoleID"];
            $this->Login = $row["Login"];
            $this->Email = $row["Email"];
            $this->Password = $row["Password"];
            $this->IsActive = $row["IsActive"];
    	}

        return TRUE;
    }

    function debugPrint() {
        if($this->ID != -1){
            echo    "<h3>UserRole Info</h3>" .
                    "<ul>" .
                        "<li> ID: $this->ID </li>" .
                        "<li> UserID: $this->UserID </li>" .
                        "<li> RoleID: $this->RoleID </li>" .
                        "<li> Login: $this->Login </li>" .
                        "<li> Email: $this->Email </li>" .
                        "<li> Password: $this->Password </li>" .
                        "<li> IsActive: $this->IsActive </li>" .
                    "</ul>";
        }
    }
}

?>
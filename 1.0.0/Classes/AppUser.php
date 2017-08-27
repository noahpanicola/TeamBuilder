<?php

Class AppUser {

    public $ID;
    public $FirstName;
    public $LastName;
    public $DateCreated;
    public $UserImage;

    function __construct($id){
        $this->setDefaults();
        $this->populateFromID($id);
    }

    function setDefaults(){
        $this->ID = -1;
        $this->FirstName = '';
        $this->LastName = '';
        $this->DateCreated = '';
        $this->UserImage= '';
    }

    function populateFromID($id){
        include '/Applications/MAMP/htdocs/1.0.0/Config/CONFIG.php';

        $conn = new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
        $query = "SELECT * FROM AppUser WHERE ID=?";

        if ($conn->connect_error) {
        	echo "mysql: error connecting to db";
        	return FALSE;
    	}

    	$stmt = $conn->prepare($query);
    	$stmt->bind_param("s", $id);
    	$stmt->execute();

    	$result = $stmt->get_result();
    	$exists = $result->num_rows;
        if($exists != 1){ return FALSE; }

        while ($row = $result->fetch_assoc()) {
        	$this->ID = $row["ID"];
            $this->FirstName = $row["FirstName"];
            $this->LastName = $row["LastName"];
            $this->DateCreated = $row["DateCreated"];
            $this->UserImage = $row["UserImage"];
    	}
        return TRUE;
    }

    function debugPrint() {
        if($this->ID != -1){
            echo    "<h3>AppUser Info</h3>" .
                    "<ul>" .
                        "<li> ID: $this->ID </li>" .
                        "<li> FirstName: $this->FirstName </li>" .
                        "<li> LastName: $this->LastName </li>" .
                        "<li> DateCreated: $this->DateCreated </li>" .
                        "<li> UserImage: $this->UserImage </li>" .
                    "</ul>";
        }
    }
}

?>
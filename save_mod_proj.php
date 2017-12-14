
<?php
  include "db_connect.php";

  // Get new data from form
  $ref_no = $_POST['ref_no'];
  $receive_date = $_POST["receive_date"];
  $due_date = $_POST["due_date"];
  $proj_title = $_POST["proj_title"];
  $dept = $_POST["dept"];
  $room = $_POST["room"];
  $researcher = $_POST["researcher"];
  $supervisor = $_POST["supervisor"];
  $extn = $_POST["extn"];

  // injection prevention
  $receive_date = mysqli_real_escape_string($db, $receive_date);
  $due_date = mysqli_real_escape_string($db, $due_date);
  $proj_title = mysqli_real_escape_string($db, $proj_title);
  $dept = mysqli_real_escape_string($db, $dept);
  $room = mysqli_real_escape_string($db, $room);
  $researcher = mysqli_real_escape_string($db, $researcher);
  $supervisor = mysqli_real_escape_string($db, $supervisor);
  $extn = mysqli_real_escape_string($db, $extn);

  $update_query = "UPDATE proj_details ";
  $details_query = "SET proj_title = '$proj_title'";
  $where_query = " WHERE ref_no = '";
  $where_query .= $ref_no;
  $where_query .= "';";

  if(!empty($receive_date)){
    $details_query .= ", receive_date = '$receive_date'";
  }
  if(!empty($due_date)){
    $details_query .= ", due_date = '$due_date'";
  }
  if(!empty($dept)){
    $details_query .= ", dept = '$dept'";
  }
  if(!empty($room)){
    $details_query .= ", room = '$room'";
  }
  if(!empty($extn)){
    $details_query .= ", extn = '$extn'";
  }
  if(!empty($researcher)){
    $details_query .= ", researcher = '$researcher'";
  }
  if(!empty($supervisor)){
    $details_query .= ", supervisor = '$supervisor'";
  }

  $update_proj_query = $update_query . $details_query . $where_query;

  mysqli_query($db, $update_proj_query) or die("Update query failed\n".mysqli_error($db));

  /* Replace PDF */

  $file_size = $_FILES['proj_file']['size'];
  if($file_size > 0) {
    $proposal_link = "documents/proposals/".$ref_no.".pdf";
    if (move_uploaded_file($_FILES["proj_file"]["tmp_name"], $proposal_link)) {
      // echo "<p>FILE UPLOADED TO: $proposal_link</p>";
    }
    else {
      echo "<P>MOVE UPLOADED FILE FAILED!</P>";
      print_r(error_get_last());
    }
  }

/*    $file_query = "INSERT INTO proj_files (ref_no, file_size, proposal_link)".
                  "VALUES ('$ref_no', $file_size, '$proposal_link')";
    mysqli_query($db, $file_query) or die("File Query Failed. ");
// */
//   echo '<html><head><link rel = "stylesheet" type = "text/css" href = "css/universal.css"><link rel = "stylesheet" type = "text/css" href = "../css/new_proj.css"></head><body>';
//   echo '<a href = "proj_comment.php?ref_no='.$ref_no.'" id = "next_button">Add Comments</a>';
//   echo '</body></html>';

?>

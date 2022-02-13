<?php

include(ROOT_PATH . "/app/database/db.php");
include(ROOT_PATH . "/app/helpers/middleware.php");

$table = 'bookings';

$appointment = selectAll($table);

$errors = array();
$id = '';
$name = '';
$contact = '';
$email = '';
$date = '';
$appointmenttype = '';
$timeslot = '';





if (isset($_GET['delete_id'])) {
    adminOnly();
    $count = delete($table, $_GET['delete_id']);
    $_SESSION['message'] = 'Appointment deleted';
    $_SESSION['type'] = 'success';
    header('location: ' . BASE_URL . '/admin/calendar/index.php'); 
    exit();
}
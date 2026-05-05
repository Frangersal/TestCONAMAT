<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_conamatenlinea = "localhost";
$database_conamatenlinea = "conamatenlinea2";
$username_conamatenlinea = "root";
$password_conamatenlinea = "";

// Adaptador para que funcione en PHP 7 en adelante
if (!function_exists('mysql_pconnect')) {
    $global_mysqli_link = null;
    function mysql_pconnect($host, $user, $pass) {
        global $global_mysqli_link;
        $global_mysqli_link = mysqli_connect($host, $user, $pass);
        return $global_mysqli_link;
    }
    function mysql_select_db($db, $link = null) {
        global $global_mysqli_link;
        return mysqli_select_db($link ? $link : $global_mysqli_link, $db);
    }
    function mysql_query($query, $link = null) {
        global $global_mysqli_link;
        return mysqli_query($link ? $link : $global_mysqli_link, $query);
    }
    function mysql_fetch_assoc($result) {
        return $result ? mysqli_fetch_assoc($result) : false;
    }
    function mysql_num_rows($result) {
        return $result ? mysqli_num_rows($result) : 0;
    }
    function mysql_error($link = null) {
        global $global_mysqli_link;
        return $global_mysqli_link ? mysqli_error($global_mysqli_link) : '';
    }
}

$conamatenlinea = mysql_pconnect($hostname_conamatenlinea, $username_conamatenlinea, $password_conamatenlinea) or trigger_error(mysql_error(),E_USER_ERROR); 

?>

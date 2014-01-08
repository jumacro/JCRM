<?php

if ( !isset($_REQUEST['term']) )
    exit;

$dblink = mysql_connect('localhost', 'wvsoftek', '~!13dash@#') or die( mysql_error() );
mysql_select_db('wvsoftek_punarmicra');

$rs = mysql_query('select company from contacts where contacts);

$data = array();
if ( $rs && mysql_num_rows($rs) )
{
    while( $row = mysql_fetch_array($rs, MYSQL_ASSOC) )
    {
        $data[] = array(
            'label' => $row['contacts'] .',
            'value' => $row['contacts']
        );
    }
}

echo json_encode($data);
flush();
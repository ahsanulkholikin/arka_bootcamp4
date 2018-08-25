<?php
$name = "Ahsanul Kholikin";
$address = "Dusun Temukerep No 12 RT 10/08, Kec Larangan, Brebes";
$hobbies = array("Programming", "Crafting Something", "Optimizing", "Learn Somthing New", "Gaming");
$is_married = false;
$skills = [
    'Web' => ['CSS', 'HTML', 'JavaScript', 'Php'],
    'Other Language' => ['C#', 'VB', 'Java', 'Python',],
    'Desktop Development' => ['.Net', 'Java'],
];

$school = [
    'highSchool' => 'SMK Telkom Purwokerto',
    'Universitas' => ''
];

function biodata($name, $address, $hobbies, $is_married, $school, $skills){
    return json_encode(array(
        'name' => $name,
        'address' => $address,
        'hobbies' => $hobbies,
        'is_married' => $is_married,
        'school' => $school,
        'skills' => $skills
    ),JSON_PRETTY_PRINT);
}

echo biodata($name, $address, $hobbies, $is_married, $school, $skills);
#!/usr/bin/env php

<?php

$versions = [
    "dev" => "dev",
    "3.0.210" => "210",
    "3.0.227" => "227",
    "3.0.229" => "229",
    "3.0.244" => "244",
    "3.0.246" => "246", // latest
];

foreach ($versions as $version => $folder) {
    echo "building image for version $version\n";
    system("docker build -t poljpocket/processwire:$version ./$folder");
}

$latest = array_key_last($versions);
echo "updating 'latest' tag to $latest\n";
system("docker tag poljpocket/processwire:$latest poljpocket/processwire:latest");

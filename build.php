<?php

$versions = [
    "3.0.210" => "3.0.210",
    "3.0.227" => "3.0.227",
    "3.0.229" => "master",
];

foreach ($versions as $version => $branch) {
    echo "building image for version $version\n";
    system("docker build --build-arg PROCESSWIRE_VERSION=$branch -t poljpocket/processwire:$version . ");
}

$latest = array_key_last($versions);
echo "updating 'latest' tag to $latest\n";
system("docker tag poljpocket/processwire:$latest poljpocket/processwire:latest");

pushd $PSScriptRoot


$tagTemplate={"mcr.microsoft.com/"+$_.Directory.Name+":1809"}

Get-ChildItem -Recurse -Filter dockerfile | foreach {
	$tag=.$tagTemplate
	docker build -t $tag $_.DirectoryName
}

popd
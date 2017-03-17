# Docker JQ Image

This Docker image provides you with a way to use [jq](https://stedolan.github.io/jq/) without the need installing it.

# Usage

This image is based on [Alpine Linux](https://alpinelinux.org/) 3.5 to be lightweight and install jq 1.5

To use it, replace the usual jq command by the following: 
```
docker run -i --rm  euranova/jq[optional_tag] jq [your_filter]
```

For example: 
```
curl 'https://api.github.com/repos/stedolan/jq/commits?per_page=1' | docker run -i --rm euranova/jq jq .[0].commit
```

which retrieve the latest commit from the jq repo and display the commit field (Do not forget the rm flag to avoid keeping exited containers).

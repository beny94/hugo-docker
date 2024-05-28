# Hugo Docker

Hi, this repository to create and launch hugo in docker. So you can only run without installed in your system. Before running make sure you build the image called hugo:debiantrixie. To run that use

    docker build -t hugo:debiantrixie .

Make sure you're running complete (with dot in end of command). The default user **hugo** will be created with id number 1000. If your user id not 1000 make sure you're edit in **docker-compose.yml**. To view your user id use command:

    id -u
    id -g
Now if all complete you can run in your directory where docker-compose.yml is located

    docker run --rm -it \
        -u hugo \
        -p 1313:1313 \
        -v "${PWD}/hugo:/home/hugo" \
        -e USERID=${USERID:-530800011} \
        -e GROUPID=${GROUPID:-530800011} \
        --name hugo \
        hugo:debiantrixie \
        bash
Now voilaa, you can use hugo server to make your ~~telkomsel site clone~~, ups i mean your page hehehe

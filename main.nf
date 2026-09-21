process printBrackets {
    debug true

    script:
    """
    echo "connecting to <lsfhost> ..."
    echo "job token <nf-sayHello_(1)> emitted"
    echo "literal tags: <foo> </bar> <baz/> and <b>bold</b>"
    printf 'ANSI still works: \\033[32mGREEN\\033[0m then <notmarkup>\\n'
    """
}

workflow {
    printBrackets()
}

include(`arch.m4')
include(`i-cfnlint.m4')

ENTRYPOINT ["cfn-lint"]
CMD ["-h"]

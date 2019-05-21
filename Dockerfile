FROM lambci/lambda:nodejs4.3

ENV PATH=/var/lang/bin:$PATH

ENTRYPOINT ["/var/lang/bin/node", "--expose-gc", "--max-executable-size=160", "--max-semi-space-size=150", "--max-old-space-size=2547", \
  "/var/runtime/node_modules/awslambda/index.js"]



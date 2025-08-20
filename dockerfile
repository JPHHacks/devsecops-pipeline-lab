FROM amazonlinux:2

# Install CloudFormation Guard
RUN curl -L https://github.com/aws-cloudformation/cloudformation-guard/releases/latest/download/cfn-guard-v2-aws-lambda-x86_64.zip -o cfn-guard.zip
RUN unzip cfn-guard.zip -d /usr/local/bin/
RUN chmod +x /usr/local/bin/cfn-guard

# Install AWS CLI
RUN yum update -y && yum install -y aws-cli

# Set working directory
WORKDIR /app

# Copy security rules
COPY security-rules.guard .

# Create validation script
RUN echo '#!/bin/bash\ncfn-guard validate -d $1 -r security-rules.guard' > validate.sh
RUN chmod +x validate.sh

ENTRYPOINT ["./validate.sh"]
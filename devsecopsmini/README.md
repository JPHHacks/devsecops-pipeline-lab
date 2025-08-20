# DevSecOps Pipeline Demo with CloudFormation Guard

## ⚠️ Demo Project - Workflow Disabled

This repository demonstrates a complete DevSecOps pipeline using CloudFormation Guard and GitHub Actions. **The workflow is intentionally disabled to prevent automatic execution.**

## 🚀 What This Demonstrates

- **CloudFormation Guard** security validation
- **GitHub Actions** CI/CD pipeline design
- **Policy-as-code** implementation
- **AWS security** best practices
- **DevSecOps** automation patterns

## 🔧 How to Use Safely

### Local Testing (Recommended)
```bash
# Install CloudFormation Guard
brew install cloudformation-guard

# Test your templates locally
cfn-guard validate -d template.yaml -r security-rules.guard --show-summary all
```

### Enable Workflow (Optional)
If you want to test the GitHub Actions workflow:

1. **Remove the safety conditions:**
   ```yaml
   # In .github/workflows/security-validation.yml
   # Remove: if: false
   # Uncomment: push and pull_request triggers
   ```

2. **Set up required secrets:**
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `SNS_TOPIC_ARN`

3. **Ensure you have:**
   - ECR repository with `cfn-guard-validator` image
   - SNS topic for notifications

## 📁 Project Structure

```
├── .github/workflows/
│   └── security-validation.yml    # GitHub Actions workflow (disabled)
├── template.yaml                  # Test CloudFormation template
├── security-rules.guard          # Security validation rules
├── dockerfile                     # Container definition
└── README.md                      # This file
```

## 🎯 Perfect For

- **Portfolio projects**
- **Learning DevSecOps**
- **Interview demonstrations**
- **Security automation examples**
- **AWS best practices reference**

## 🔒 Security Note

The workflow is disabled by default to prevent accidental execution. This makes it safe to:
- Share publicly
- Use in demonstrations
- Include in portfolios
- Clone for learning purposes

## 📚 Learn More

- [CloudFormation Guard Documentation](https://docs.aws.amazon.com/cfn-guard/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [AWS Security Best Practices](https://aws.amazon.com/security/)

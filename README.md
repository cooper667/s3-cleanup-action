# GitHub Action to Remove S3 Bucket 🔄

This simple action uses the [vanilla AWS CLI](https://docs.aws.amazon.com/cli/index.html) to remove an S3 bucket. Useful when you have closed a PR and want to tidy up.

## Usage

### `workflow.yml` Example

Place in a `.yml` file such as this one in your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions)

```yaml
name: Upload Website

on:
  push:
    branches:
    - master

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: cooper667/s3-cleanup-action@master
      env:
        AWS_S3_BUCKET: ${{ secrets.AWS_S3_BUCKET }}
        AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        AWS_REGION: 'us-west-1'   # optional: defaults to us-east-1
```

## License

This project is distributed under the [MIT license](LICENSE.md).

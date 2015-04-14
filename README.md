Wercker step new-tag [![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/tcnksm/wercker-step-new-tag/blob/master/LICENCE)
====

This is [wercker](http://wercker.com/) deploy step to check a provided tag is new (not exist on GitHub but grater than others). This step is used to stop deploy step when tag is not new. You can deploy only when tag new one.

## Usage

In the `wercker.yml`, use the following step definition:

```yaml
steps:
   - tcnksm/new-tag:
       owner: USERNAME
       repo: REPONAME
       tag: TAG
   - ...
```

To use this step, you must set `owner` name, `repo` name and `tag` to check.

## Example

For example, if you want to check tag `0.1.1` is new or not in tags on [github.com/tcnksm/ghr](github.com/tcnksm/ghr), 

```yaml
steps:
   - tcnksm/new-tag:
       owner: tcnksm
       repo: ghr
       tag: 0.1.1
   - ...
```

## Author

[Taichi Nakashima](https://github.com/tcnksm)

# 基础设施贡献指南

欢迎来到 Infrastructure 的世界！本文档会指导你如何为 Union Music Infrastructure 贡献一份自己的力量。
请在你要提 issue 或者 pull request 之前花几分钟来阅读一遍这篇指南。如果你发现文档中有错误或缺失的内容，欢迎提交 pull request。

## 分支管理

由于基础设施不存在发布周期，所以我们仅维护一个 `main` 分支，所有对 `main` 分支的改动都会马上发布到线上。
如果你要修复一个 bug，请发送 pull request 到 `main`，approve 之后会立刻合并；如果你要开发一个新功能或代码重构，请在 `feature` 或
`refactor` 分支上操作，我们会定时合并 `feature` 和 `refactor` 到 `main`。

## Bugs

我们使用 Jira 来做 bug 追踪，在你报告一个 bug 之前，请先确保已经搜索过已有的 issue。

## 新增功能

如果你有改进现有基础设施或新增基础设施的想法，欢迎提交 issue 需求。

## Pull Request

@XNXKTech/infra 团队会关注所有的 pull request，我们会 review 以及合并你的变更，也会要求你做一些修改或者告诉你为什么我们不接受
这样的变更。

在你发送 Pull Request 之前，请确认你是按照下面的步骤来做的：

1. 基于 [正确的分支](#分支管理) 做修改
2. 在基础设施提供者目录下运行了 `terraform init`
3. 定义基础目录结构(可复制 `template` 目录)
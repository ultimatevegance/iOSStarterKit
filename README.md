# iOS App StarterKit

## 需求

1. 一个快速开始全新项目的基础模板项目，所有app应该具有的基础层级：网络层，数据存储层，UI层，全局app设置以及工具层等等 均包括在内；
2. 一个基于该项目快速生成新的app模板的命令行工具。包括code generator，archive，etc。

## StarterKit 设计

### 项目结构

├── Others
├── Script
└── StarterKit
    ├── Base
    │   ├── AppConfig
    │   ├── Data
    │   ├── Networking
    │   ├── UIComponents
    │   └── Vendor
    └── BizModules

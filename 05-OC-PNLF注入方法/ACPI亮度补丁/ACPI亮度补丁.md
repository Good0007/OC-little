# ACPI亮度补丁

## 说明

常用注入方法不起作用时，尝试本方法。

### 补丁：***SSDT-PNLF-ACPI***

补丁可能需要修改才适合你。修改方法：

- 提取本机 ACPI
- 所有 ACPI 文件中搜索 `_BCL`, `_BCM`, `_BQC`，记录它们所属设备名称(如 `LCD`)。
- 修改补丁文件中的 `DD1F` 为前面记录的名称（`DD1F` 替换为 `LCD`）。参考 ***《修改图示》***。
- 修改补丁文件的 `IGPU` 为 ACPI 的显卡名称（如 `IGPU` 替换为 `GFX0`）。

### 驱动

- ACPIBacklightInjector.kext

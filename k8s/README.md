# k8s

# pod

> 种类

- 普通pod 
- init pod
- 临时pod

普通pod就是我们运行得一些服务 比如mysql redis nginx等

init pod通常在普通pod之前运行,常见的场景比如用于服务初始化之前的一些操作.

临时pod通常用于排查错误场景 比如使用kubectl exec


# FQA

### 1. StorageClass中的reclaimPolicy回收策略和pv中的persistentVolumeReclaimPolicy回收策略有何异同是否冲突如果同时使用,或者先后优先级 

### 2. containerPort、nodePort、targetPort有啥区别
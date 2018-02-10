# OpenGL中的立方体贴图、环境映射以及模型的反射贴图 
 
## Features:
* 使用立方体贴图添加天空盒效果
* 给物体增加反射和折射的属性
* 给模型增加反射贴图

## 依赖：
* glfw3.lib 推荐在[官方网站](http://www.glfw.org/download.html)下载源代码，然后自行编译。本项目编译使用的是CMake和Visual Studio 2015.
* GLAD 打开GLAD的[在线服务](http://glad.dav1d.de/)可轻松配置。本项目使用OpenGL 4.3.
* stb_image.h 是[Sean Barrett](https://github.com/nothings)的一个非常流行的单头文件图像加载库，可以在[这里](https://github.com/nothings/stb/blob/master/stb_image.h)下载。本项目使用其来加载纹理图片。
* GLM 一个只有头文件的库，不用链接和编译。可以在它们的[网站](http://glm.g-truc.net/0.9.5/index.html)上下载。本项目使用其作为数学库。
* Assimp 一个非常流行的模型导入库，可以在[下载页面](http://assimp.org/main_downloads.html)选择相应的版本，自行使用CMake 和 Visual Studio 2015编译。

## 效果：
### 反射：
![Reflection](https://github.com/SweeneyChoi/Environment-Mapping-in-OpenGL/blob/master/images/%E7%8E%AF%E5%A2%83%E6%98%A0%E5%B0%84%EF%BC%88%E5%8F%8D%E5%B0%84%EF%BC%89.png)

### 折射：
![Refraction](https://github.com/SweeneyChoi/Environment-Mapping-in-OpenGL/blob/master/images/%E7%8E%AF%E5%A2%83%E6%98%A0%E5%B0%84%EF%BC%88%E6%8A%98%E5%B0%84%EF%BC%89.png)

### 反射贴图：
* 注意：
* Assimp不支持反射贴图，可以将反射贴图存储为其他形式，比如**漫反射贴图**。在加载材质的时候将反射贴图的纹理类型设置为aiTextureType_AMBIENT。
![Reflection](https://github.com/SweeneyChoi/Environment-Mapping-in-OpenGL/blob/master/images/反射贴图1.png)
目镜镜片拥有了反射效果
![Reflection](https://github.com/SweeneyChoi/Environment-Mapping-in-OpenGL/blob/master/images/%E5%8F%8D%E5%B0%84%E8%B4%B4%E5%9B%BE2.png)
![Reflection](https://github.com/SweeneyChoi/Environment-Mapping-in-OpenGL/blob/master/images/%E5%8F%8D%E5%B0%84%E8%B4%B4%E5%9B%BE3.png)
身体金属材质拥有一种铬质效果



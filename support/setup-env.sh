TOOLCHAIN_ARCH=`uname -m`
if [ "$TOOLCHAIN_ARCH" = "aarch64" ]; then
	# 指定交叉编译工具链前缀
	export CROSS_COMPILE=/usr/bin/aarch64-linux-gnu-
	# 设置运行时动态库搜索路径
	export LD_LIBRARY_PATH=/usr/lib:/lib:/usr/lib/aarch64-linux-gnu:/lib/aarch64-linux-gnu:/root/usr/lib:$LD_LIBRARY_PATH
	# 设置编译时动态库和静态库搜索路径
	export LIBRARY_PATH=/usr/lib:/lib:/usr/lib/aarch64-linux-gnu:/lib/aarch64-linux-gnu:/root/usr/lib:$LIBRARY_PATH
	# 设置头文件搜索路径
	export C_INCLUDE_PATH=/usr/include:/root/usr/include:$C_INCLUDE_PATH
	# 设置默认安装路径（如果需要）
	export PREFIX=/usr
else
	export PATH="/opt/aarch64-linux-gnu/aarch64-linux-gnu/bin:${PATH}:/opt/aarch64-linux-gnu/aarch64-linux-gnu/libc/bin"
	export CROSS_COMPILE=/opt/aarch64-linux-gnu/bin/aarch64-linux-gnu-
	export PREFIX=/opt/aarch64-linux-gnu/aarch64-linux-gnu/libc/usr
fi
export UNION_PLATFORM=tg3040

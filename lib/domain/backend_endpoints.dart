/// 本地构建版：不再内置任何第三方服务地址。
///
/// 上游此处固定指向作者自建的解析与搜索后端（域名与 IP 各一个），
/// 该地址不受社区构建配置控制，会直接编进二进制。本版全部置空，
/// 相关通路（资源搜索、远程解析规则下发）因地址为空而不启用；
/// 各网盘解析走包内 lib/data/providers 的内置实现，不依赖此地址。
abstract final class BackendEndpoints {
  static const search = '';
  static const parser = search;
  static const legacyParser = '';

  /// 历史实现会把手写的老地址替换成 parser；本版没有可替换的目标，
  /// 只做格式校验后原样返回，避免把无效地址当成有效端点使用。
  static String parserUrl(String value) => value.trim();
}

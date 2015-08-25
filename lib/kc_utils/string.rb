module KcUtils
  class String

    class << self
      # 取一个随机字符串
      def randstr(length=8)
        base = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        size = base.size
        re = '' << base[rand(size-10)]
        (length - 1).times {
          re << base[rand(size)]
        }
        re
      end

      # 在文件名末尾带一个随机字符串
      def get_virtual_filename(filename)
        filename = filename.to_s
        return "" if filename.blank?
        arr = filename.split(".")
        return "#{filename}-#{randstr(32)}" if arr.count == 1

        extname = arr.pop
        return "#{arr*"."}-#{randstr(32)}.#{extname}"
      end

    end
  end
end

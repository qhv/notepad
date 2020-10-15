class Post
  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    # todo
  end

  def to_strings
    # todo
  end

  def save
    file = File.new(file_path, "w:UTF-8")

    to_strings.each { |item| file.puts(item) }

    file.close
  end

  def file_path
    file_name =
      @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    File.join(__dir__, file_name)
  end
end

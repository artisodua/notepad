class Post

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_condole
    # todo
  end

  def to_strings
    # todo
  end

  def save
    file = File.new(file_puth, "w:UTF-8")

    for item in to_strings do
      file.puts(item)
    end
    file.close
  end

  def file_puth
    current_puth = File.dirname(__FILE__)

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return current_puth + "/" + file_name
  end
end

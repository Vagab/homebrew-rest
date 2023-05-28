class Rest < Formula
  desc 'Control screen dimming to rest your eyes'
  homepage 'https://github.com/Vagab/rest'
  url 'https://github.com/Vagab/rest/archive/v0.1.0.tar.gz'
  sha256 'ca498e4985c21405e24d77db26045ac22df559fcdb3d81129cd5cc27a3d77967'
  head 'https://github.com/Vagab/rest.git'

  depends_on 'brightness' => :build

  def install
    bin.install 'rest'
  end

  test do
    system "#{bin}/rest", '--help'
  end
end

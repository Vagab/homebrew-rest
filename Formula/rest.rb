class Rest < Formula
  desc 'Control screen dimming to rest your eyes'
  homepage 'https://github.com/Vagab/rest'
  url 'https://github.com/Vagab/rest/archive/v0.1.0.tar.gz'
  sha256 '9550225591b29d38e276cd93d86abc417892df30bd80fbfebd617e0053f49520'
  head 'https://github.com/Vagab/rest.git'

  depends_on 'brightness' => :build

  def install
    bin.install 'rest'
  end

  test do
    system "#{bin}/rest", '--help'
  end
end

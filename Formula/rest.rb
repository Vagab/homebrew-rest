class Rest < Formula
  desc 'Control screen dimming to rest your eyes'
  homepage 'https://github.com/Vagab/rest'
  url 'https://github.com/Vagab/rest/archive/v0.1.0.tar.gz'
  sha256 'ca498e4985c21405e24d77db26045ac22df559fcdb3d81129cd5cc27a3d77967'
  head 'https://github.com/Vagab/rest.git'

  resource 'brightness' do
    url 'https://github.com/nriley/brightness.git', using: :git
  end

  def install
    resource('brightness').stage do
      system 'make'
      bin.install 'brightness'
    end
    bin.install 'rest.rb' => 'rest'
  end

  test do
    system 'true'
  end
end

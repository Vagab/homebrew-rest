class Rest < Formula
  desc 'Control screen dimming to rest your eyes'
  homepage 'https://github.com/Vagab/rest'
  url 'https://github.com/Vagab/rest/archive/v0.1.5.tar.gz'
  sha256 '0cb17ea07e1ed0c624e0f7216c243391cc25a2d5f6a8f04be8c48d29e98c2e78'
  head 'https://github.com/Vagab/rest.git'

  resource 'brightness' do
    url 'https://github.com/nriley/brightness.git', using: :git
  end

  depends_on 'gcc' => :build

  def install
    resource('brightness').stage do
      system 'make'
      bin.install 'brightness'
    end

    system 'make'
    bin.install 'logger'
    bin.install 'rest.rb' => 'rest'
  end

  test do
    system 'true'
  end
end

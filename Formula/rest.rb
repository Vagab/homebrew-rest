class Rest < Formula
  desc 'Control screen dimming to rest your eyes'
  homepage 'https://github.com/Vagab/rest'
  url 'https://github.com/Vagab/rest/archive/v0.1.2.tar.gz'
  sha256 '32224a691bebb1c9d32943f0aa13146c37bb7e205d4aced4693c94a392dc23b7'
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

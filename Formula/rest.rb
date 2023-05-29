class Rest < Formula
  desc 'Control screen dimming to rest your eyes'
  homepage 'https://github.com/Vagab/rest'
  url 'https://github.com/Vagab/rest/archive/v0.1.3.tar.gz'
  sha256 '6510c524adab6c02a31d7e20780021b2d61ea25172bbd96b00a2841e6028a168'
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

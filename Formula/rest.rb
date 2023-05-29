class Rest < Formula
  desc 'Control screen dimming to rest your eyes'
  homepage 'https://github.com/Vagab/rest'
  url 'https://github.com/Vagab/rest/archive/v0.1.1.tar.gz'
  sha256 'c2336abe232d67fe421f85158456dfb2f9f1c3fe815b44045c99298de0bf748f'
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

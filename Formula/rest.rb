class Rest < Formula
  desc 'Control screen dimming to rest your eyes'
  homepage 'https://github.com/Vagab/rest'
  url 'https://github.com/Vagab/rest/archive/v0.1.4.tar.gz'
  sha256 '8101b11e70b64ad3027c96d035be18fa6ed8159d768d6c477b95591c898cafe0'
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

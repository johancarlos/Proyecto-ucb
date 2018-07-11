module VideosHelper
    def embed(videourl)
        youtube_id = videourl.split("&").first
        youtube_id = youtube_id.split("=").last
        return youtube_id
    end
end

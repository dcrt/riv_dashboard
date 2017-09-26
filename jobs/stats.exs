use Kitto.Job.DSL

job :rif_icoty, every: :minute do
  url = "http://2017.rifvrn.ru/premia/works/decart-it-production-127.html"
  html = HTTPotion.get url
  res = Floki.find(html.body, "#voteCounter") |> Floki.text
  resImg = Floki.find(html.body, ".b-premia-work-cover img") |> Floki.attribute("src")
  imageUrl = resImg
  broadcast! %{text: "#{res} голосов", url: url, imageUrl: imageUrl}
end

job :rif_our_site, every: :hour do
  url = "http://2017.rifvrn.ru/premia/works/sayt-decart-it-production-170.html"
  html = HTTPotion.get url
  res = Floki.find(html.body, "#voteCounter") |> Floki.text
  resImg = Floki.find(html.body, ".b-premia-work-cover img") |> Floki.attribute("src")
  imageUrl = resImg
  broadcast! %{text: "#{res} голосов", url: url, imageUrl: imageUrl}
end

job :rif_vtt_site, every: :hour do
  url = "http://2017.rifvrn.ru/premia/works/internet-magazin-voronezhtorgtehnika-264.html"
  html = HTTPotion.get url
  res = Floki.find(html.body, "#voteCounter") |> Floki.text
  resImg = Floki.find(html.body, ".b-premia-work-cover img") |> Floki.attribute("src")
  imageUrl = resImg
  broadcast! %{text: "#{res} голосов", url: url, imageUrl: imageUrl}
end

job :rif_sm_site, every: :hour do
  url = "http://2017.rifvrn.ru/premia/works/sayt-seti-kinoteatrov-starmlad-135.html"
  html = HTTPotion.get url
  res = Floki.find(html.body, "#voteCounter") |> Floki.text
  resImg = Floki.find(html.body, ".b-premia-work-cover img") |> Floki.attribute("src")
  imageUrl = resImg
  broadcast! %{text: "#{res} голосов", url: url, imageUrl: imageUrl}
end

job :rif_nik_site, every: :hour do
  url = "http://2017.rifvrn.ru/premia/works/sayt-teatralnogo-centra-nikitinskiy-33.html"
  html = HTTPotion.get url
  res = Floki.find(html.body, "#voteCounter") |> Floki.text
  resImg = Floki.find(html.body, ".b-premia-work-cover img") |> Floki.attribute("src")
  imageUrl = resImg
  broadcast! %{text: "#{res} голосов", url: url, imageUrl: imageUrl}
end

package pl.trojmiastojug.build

//TODO: set jbake location
final String jbake = 'src/jbake'

final String meetupKey = args ? args[0] : ''
final String groupName = 'Trojmiasto-Java-User-Group'

def base = "https://api.meetup.com/${groupName}/events?"
def params = [
    api: meetupKey,
    format: 'json',
    status: 'upcoming,past'
  ]

def url = new URL(base + params.collect { k,v -> "$k=$v"}.join('&'))
def events = new groovy.json.JsonSlurper().parse(url)

events.each { event ->
  title = event['name']
  datetime = new Date(event['time']);
  postFileName = datetime.format("yyyy-MM-dd") + '-' + title.replaceAll(/[\#\ \x00\/\\:\*\?\!'.\"<>\|]/, '_').replaceAll(/_+/, '_') + ".md"

  def output = new File("build/events/${postFileName}")
  def template = new File("src/jbake/templates/event.gsp")
  output << new groovy.text.StreamingTemplateEngine().createTemplate(template)
      .make([
        title: title,
        date: datetime.format("yyyy-MM-dd"),
        description: event['description']
      ])
}

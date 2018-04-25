<span class="menu-title" style="display: none">Introduction</span>
## Migrazione da IdP v2 a v3
##### <span style="font-family:Helvetica Neue; font-weight:bold">Aggiornamento IdP e nuovi standard</span>
Daniele Albrizio - albrizio@units.it - IDEM Day 2018

---
<span class="menu-title" style="display: none">Theme Switcher</span>

## Slideshow Theme Switcher
<span style="font-size:0.6em; color:gray">Available inside burger-menu.</span> |
<span style="font-size:0.6em; color:gray">Start switching themes right now!</span>

---
<span class="menu-title" style="display: none">Go Fullscreen</span>

## Tip!
For the *best viewing experience*   
press **F** key to go fullscreen.

For the *best viewing experience*   
press **F** key to go fullscreen.

For the *best viewing experience*   
press **F** key to go fullscreen.

---

## Markdown Slides
<span style="font-size:0.6em; color:gray">Press Down key for details.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Slide-Markdown) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<span class="menu-title" style="display: none">GFM</span>

#### Use GitHub Flavored Markdown
#### For Slide Content Creation

<br>

The *same syntax* you use to create project   
**READMEs** and **Wikis** for your Git repos.

---

## Code Presenting
## Repo Source Files
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Code-Presenting) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++

attribute-filter.xml - PolicyRequirementRule

```xml
<AttributeFilterPolicy>
 <PolicyRequirementRule xsi:type="InEntityGroup"
      groupID="http://edugain.org/" />
 <AttributeRule attributeID="eduPersonAffiliation">
  <PermitValueRule xsi:type="OR">
   <Rule xsi:type="Value" value="faculty" ignoreCase="true" />
   <Rule xsi:type="Value" value="student" ignoreCase="true" />
   <Rule xsi:type="Value" value="staff" ignoreCase="true" />
   <Rule xsi:type="Value" value="alum" ignoreCase="true" />
   <Rule xsi:type="Value" value="member" ignoreCase="true" />
   <Rule xsi:type="Value" value="affiliate" ignoreCase="true" />
   <Rule xsi:type="Value" value="employee" ignoreCase="true" />
   <Rule xsi:type="Value" value="library-walk-in" ignoreCase="true" />
  </PermitValueRule>
 </AttributeRule>
 <AttributeRule attributeID="mail">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="commonName">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="displayName">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="schacHomeOrganization">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="schacHomeOrganizationType">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="eduPersonPrincipalName">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
</AttributeFilterPolicy>

```
<span class="code-presenting-annotation fragment current-only" data-code-focus="2">Conditional filter</span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="2-3">Conditional filter</span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="1-18"></span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="15-30"></span>

+++
```xml
<!-- Rule for IDEM SPs -->
<AttributeFilterPolicy id="releaseToIDEM">
 <PolicyRequirementRule xsi:type="RegistrationAuthority"
      registrars="http://www.idem.garr.it/"/>

 <!-- Attributes defined by "Specifiche Tecniche per la Compilazione e l'uso degli Attr
ibuti" version 2012 + modifiche -->
 <AttributeRule attributeID="displayName">
  <PermitValueRule xsi:type="AttributeInMetadata" onlyIfRequired="true" />
 </AttributeRule>
 <AttributeRule attributeID="surname">
  <PermitValueRule xsi:type="AttributeInMetadata" onlyIfRequired="true" />
 </AttributeRule>
 <AttributeRule attributeID="givenName">
  <PermitValueRule xsi:type="AttributeInMetadata" onlyIfRequired="true" />
 </AttributeRule>
[...]
```


---
<span class="menu-title" style="display: none">Present Static Block</span>

## Code Presenting
## Static Source Blocks
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Code-Presenting) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<p><span class="menu-title slide-title">Source: JavaScript Block</span></p>

```javascript
// Include http module.
var http = require("http");

// Create the server. Function passed as parameter
// is called on every request made.
http.createServer(function (request, response) {
  // Attach listener on end event.  This event is
  // called when client sent, awaiting response.
  request.on("end", function () {
    // Write headers to the response.
    // HTTP 200 status, Content-Type text/plain.
    response.writeHead(200, {
      'Content-Type': 'text/plain'
    });
    // Send data and end response.
    response.end('Hello HTTP!');
  });

// Listen on the 8080 port.
}).listen(8080);
```

<span class="code-presenting-annotation fragment current-only" data-code-focus="1,2">You can present code inlined within your slide markdown too.</span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="9-17">Displayed using code-syntax highlighting just like your IDE.</span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="19-20">Again, all of this without ever leaving your slideshow.</span>

---
<span class="menu-title" style="display: none">Present GIST</span>

## Code Presenting
## GitHub GIST
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Code-Presenting) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++

<span class='menu-title slide-title'>Source: Scala GIST</span>
```Scala
package io.onetapbeyond.lambda.spark.executor.examples

import io.onetapbeyond.lambda.spark.executor.Gateway._
import io.onetapbeyond.aws.gateway.executor._
import org.apache.spark._
import scala.collection.JavaConverters._

/*
 * TaskDelegation
 *
 * https://github.com/onetapbeyond/lambda-spark-executor
 *
 * A sample application that demonstrates the basic usage
 * of SAMBA to delegate selected Spark RDD tasks to execute
 * on AWS Lambda compute infrastructure in the cloud.
 */
object TaskDelegation {

  def main(args:Array[String]):Unit = {

    try {

      val sc = initSparkContext()

      /*
       * Initialize a basic batch data source for the
       * example by generating an RDD[Int].
       */
      val dataRDD = sc.parallelize(1 to BATCH_DATA_SIZE)

      /*
       * API_GATEWAY represents the API on the AWS API
       * Gateway implemented by an AWS Lambda function.
       * We register the gateway as a Spark broadcast
       * variable so it can be safely referenced later
       * within the Spark RDD.map operation that builds
       * our AWSTask.
       */
      val gateway = sc.broadcast(API_GATEWAY)

      /*
       * Map over dataRDD[Int] to produce an RDD[AWSTask].
       * Each AWSTask will execute an AWS Lambda function
       * exposed by the API_SCORE_ENDPOINT endpoint on the
       * AWS API Gateway.
       */
      val aTaskRDD = dataRDD.map(num => {

        AWS.Task(gateway.value)
           .resource(API_SCORE_ENDPOINT)
           .input(Map("num" -> num).asJava)
           .post()
      })

      aTaskRDD.foreach { aTask => println(aTask) }

      /*
       * Delegate aTaskRDD[AWSTask] execution to AWS Lambda
       * compute infrastructure to produce
       * aTaskResultRDD[AWSResult].
       */
      val aTaskResultRDD = aTaskRDD.delegate

      /*
       * As this is an example application we can simply use
       * the foreach() operation on the RDD to force the
       * computation and to output the results. And as we are
       * using a mock API on the AWS API Gateway there is no
       * response data, the result simply indicates success
       * or failure.
       */
      aTaskResultRDD.foreach { result => {
        println("TaskDelegation: compute score input=" +
          result.input + " result=" + result.success)
      }}

    } catch {
      case t:Throwable =>
        println("TaskDelegation: caught ex=" + t)
    }

  }

  def initSparkContext():SparkContext = {
    val conf = new SparkConf().setAppName(APP_NAME)
    new SparkContext(conf)
  }

  private val APP_NAME = "SAMBA Task Delegation Example"
  private val BATCH_DATA_SIZE = 10
  private val API_ID = "06ti6xmgg2"
  private val API_STAGE = "mock"
  private val API_SCORE_ENDPOINT = "/score"
  private val API_GATEWAY:AWSGateway =
    AWS.Gateway(API_ID).region(AWS.Region.OREGON)
                       .stage(API_STAGE)
                       .build()
}
```


<span class="code-presenting-annotation fragment current-only" data-code-focus="23">You can even present code found within any GitHub GIST.</span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="41-53">GIST source code is beautifully rendered on any slide.</span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="57-62">Code-presenting works seamlessly both online and offline.</span>

---
<span class="menu-title" style="display: none">Embed Images</span>

## Image Slides
## [ Inline ]
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Image-Slides) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++

#### Make A Visual Statement

<br>

Use inline images to lend   
a *visual punch* to your slideshow presentations.


+++
<span class="menu-title" style="display: none">Private Investocat</span>

<span style="color:gray; font-size:0.7em">Inline Image at <b>Absolute URL</b></span>

![Image](./assets/md/assets/octocat-privateinvestocat.jpg)


<span style="color:gray; font-size: 0.5em;">the <b>Private Investocat</b> by [jeejkang](https://github.com/jeejkang)</span>


+++
<span class="menu-title" style="display: none">Octocat De Los Muertos</span>

<span style="color:gray; font-size:0.7em">Inline Image at GitHub Repo <b>Relative URL</b></span>

![Image](./assets/md/assets/octocat-de-los-muertos.jpg)

<span style="color:gray; font-size:0.5em">the <b>Octocat-De-Los-Muertos</b> by [cameronmcefee](https://github.com/cameronmcefee)</span>


+++
<span class="menu-title" style="display: none">Daftpunktocat</span>

<span style="color:gray; font-size:0.7em"><b>Animated GIFs</b> Work Too!</span>

![Image](./assets/md/assets/octocat-daftpunkocat.gif)

<span style="color:gray; font-size:0.5em">the <b>Daftpunktocat-Guy</b> by [jeejkang](https://github.com/jeejkang)</span>

---
<span class="menu-title" style="display: none">Background Images</span>

## Image Slides
## [ Background ]
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Image-Slides#background) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<span class="menu-title" style="display: none">Bold Statements</span>

#### Make A Bold Visual Statement

<br>

Use high-resolution background images   
for *maximum impact*.

+++
<!-- .slide: data-background-image="./assets/md/assets/victory.jpg" data-background-size="100% 100%" data-background-color=" " data-background-position="center" -->

<span class="menu-title" style="display: none">V For Victory</span>

+++
<!-- .slide: data-background-image="./assets/md/assets/127.jpg" data-background-size="100% 100%" data-background-color=" " data-background-position="center" -->

<span class="menu-title" style="display: none">127.0.0.1</span>

---
<span class="menu-title" style="display: none">Embed Video</span>
## Video Slides
## [ Inline ]
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Video-Slides) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<span class="menu-title" style="display: none">YouTube, etc</span>

#### Bring Your Presentations Alive

<br>

Embed *YouTube*, *Vimeo*, *MP4* and *WebM*   
inline on any slide.

+++
<span class="menu-title" style="display: none">Fresh Guacamole</span>

#### Video Disabled

+++
<span class="menu-title" style="display: none">Gravity</span>

#### Video Disabled

+++
<span class="menu-title" style="display: none">Big Buck Bunny</span>

#### Video Disabled


---
<span class="menu-title" style="display: none">Background Videos</span>

## Video Slides
## [ Background ]
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Video-Slides#background) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<span class="menu-title" style="display: none">Viewer Experience</span>

#### Maximize The Viewer Experience

<br>

Go fullscreen with *MP4* and *WebM* videos.

+++

#### Video Disabled

<span class="menu-title" style="display: none">Big Buck Bunny</span>

---

## Math Notation Slides
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Math-Notation-Slides) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<span class="menu-title" style="display: none">Beautiful Math</span>

#### Beautiful Math Rendered Beautifully

<br>

Use *TeX*, *LaTeX* and *MathML* markup   
powered by [MathJax](https://www.mathjax.org).

+++
<span class="menu-title" style="display: none">Sample</span>

`$$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$$`

+++
<span class="menu-title" style="display: none">Sample</span>

`\begin{align}
\dot{x} & = \sigma(y-x) \\
\dot{y} & = \rho x - y - xz \\
\dot{z} & = -\beta z + xy
\end{align}`

+++
<span class="menu-title" style="display: none">Sample</span>

##### The Cauchy-Schwarz Inequality

`\[
\left( \sum_{k=1}^n a_k b_k \right)^{\!\!2} \leq
 \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)
\]`

+++
<span class="menu-title" style="display: none">Inline Sample</span>

##### In-line Mathematics

This expression `\(\sqrt{3x-1}+(1+x)^2\)` is an example of an inline equation.

---

## Chart Slides
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Chart-Slides) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<span class="menu-title" style="display: none">Chart Types</span>

#### Chart Data Rendered Beautifully

<br>

Use *Bar*, *Line*, *Area*, and *Scatter* charts among many other chart types directly within your markdown, all powered by [Chart.js](http://www.chartjs.org).

+++
<span class="menu-title" style="display: none">Sample Line Chart</span>

<canvas data-chart="line">
<!--
{
 "data": {
  "labels": ["January"," February"," March"," April"," May"," June"," July"],
  "datasets": [
   {
    "data":[65,59,80,81,56,55,40],
    "label":"My first dataset","backgroundColor":"rgba(20,220,220,.8)"
   },
   {
    "data":[28,48,40,19,86,27,90],
    "label":"My second dataset","backgroundColor":"rgba(220,120,120,.8)"
   }
  ]
 },
 "options": { "responsive": "true" }
}
-->
</canvas>

+++
<span class="menu-title" style="display: none">Sample Bar Chart</span>

<canvas class="stretch" data-chart="horizontalBar">
<!--
{
 "data" : {
  "labels" : ["Grapefruit", "Orange", "Kiwi",
    "Blackberry", "Banana",
    "Blueberry"],
  "datasets" : [{
    "data": [48, 26, 59, 39, 21, 74],
    "backgroundColor": "#e49436",
    "borderColor": "#e49436"
  }]
  },
  "options": {
    "title": {
      "display": true,
      "text": "The most delicious fruit?",
      "fontColor": "gray",
      "fontSize": 20
    },
    "legend": {
      "display": false
    },
    "scales": {
      "xAxes": [{
        "ticks": {
            "beginAtZero": true,
            "max": 80,
            "stepSize": 10,
            "fontColor": "gray"
        },
        "scaleLabel": {
          "display": true,
          "labelString": "Respondents",
          "fontColor": "gray"
        }
      }],
      "yAxes": [{
        "ticks": {
            "fontColor": "gray"
        }
      }]
    }
  }
}
-->
</canvas>

---

## Slide Fragments
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Fragment-Slides) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++

#### Reveal Slide Concepts Piecemeal
<span class="menu-title" style="display: none">Piecemeal Concepts</span>

<br>

Step through slide content in sequence   
to *slowly reveal* the bigger picture.

+++
<span class="menu-title" style="display: none">Piecemeal Lists</span>

- Java
- Groovy  <!-- .element: class="fragment" -->
- Kotlin  <!-- .element: class="fragment" -->
- Scala   <!-- .element: class="fragment" -->
- The JVM rocks!  <!-- .element: class="fragment" -->

+++
<span class="menu-title" style="display: none">Piecemeal Tables</span>

<table>
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>25</td>
  </tr>
  <tr class="fragment">
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
  <tr class="fragment">
    <td>John</td>
    <td>Doe</td>
    <td>43</td>
  </tr>
</table>

---
## <span style="text-transform: none">PITCHME.yaml</span> Settings
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Slideshow-Settings) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<span class="menu-title" style="display: none">Custom Look and Feel</span>

#### Stamp Your Own Look and Feel

<br>

Set a default theme, custom logo, custom css, background image, and preferred code syntax highlighting style.

+++
<span class="menu-title" style="display: none">Custom Behavior</span>

#### Customize Slideshow Behavior

<br>

Enable auto-slide with custom slide intervals, presentation looping, and RTL flow.


---
<span class="menu-title" style="display: none">Keyboard Controls</span>
## Slideshow Keyboard Controls
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Slideshow-Fullscreen-Mode) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<span class="menu-title" style="display: none">Try Out Now!</span>

#### Try Out These Great Features Now!

<br>

| Mode | On Key | Off Key |
| ---- | :------: | :--------: |
| Fullscreen | F |  Esc |
| Overview | O |  O |
| Blackout | B |  B |
| Help | ? |  Esc |


---

## GitPitch Social
<span style="font-size:0.6em; color:gray">Press Down key for examples.</span> |
<span style="font-size:0.6em; color:gray">See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Slideshow-GitHub-Badge) for details.</span>

<i class="fa fa-arrow-down" aria-hidden="true"> </i>

+++
<span class="menu-title" style="display: none">Designed For Sharing</span>

#### Slideshows Designed For Sharing

<br>

- View any slideshow at its public URL
- [Promote](https://github.com/gitpitch/gitpitch/wiki/Slideshow-GitHub-Badge) any slideshow using a GitHub badge
- [Embed](https://github.com/gitpitch/gitpitch/wiki/Slideshow-Embedding) any slideshow within a blog or website
- [Share](https://github.com/gitpitch/gitpitch/wiki/Slideshow-Sharing) any slideshow on Twitter, LinkedIn, etc
- [Print](https://github.com/gitpitch/gitpitch/wiki/Slideshow-Printing) any slideshow as a PDF document
- [Download and present](https://github.com/gitpitch/gitpitch/wiki/Slideshow-Offline) any slideshow offline

---
<span class="menu-title" style="display: none">Get The Word Out!</span>

## GO FOR IT.
## JUST ADD <span style="color:#e49436; text-transform: none">PITCHME.md</span> ;)

@react.component
let make = (~state: Global.state) => {
  let style = ReactDOMStyle.make(
    //~margin=Ute.getPercentageInnerHeightAsPxString(0.5, state.localDevice.innerHeight),
    ~margin="0",
    ~padding="0",
    (),
  )
  let items = Belt.Array.map(state.localDevice.videoContainerIds, id => {
    <span id key={id} style> <VideoStd state /> </span>
  })
  <> <div id="participants"> {React.array(items)} </div> </>
}

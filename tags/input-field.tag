<input-field>
  <div if={opts.editable == 'true'}>
    <label>{opts.labelText}</label> <input type='text' name={opts.name} value={opts.value}/>
  </div>
  <div if={opts.editable=='false'}>
    <label>{opts.labelText}</label> <span>{opts.value}<span/>
  </div>
</input-field>

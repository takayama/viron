dmc-checkbox(class="Checkbox { opts.ischecked ? 'Checkbox--checked' : '' } { opts.isdisabled ? 'Checkbox--disabled' : ''}" onClick="{ handleClick }")
  .Checkbox__content
    .Checkbox__mark
      dmc-icon(type="check")
    virtual(if="{ !!opts.label }")
      .Checkbox__label { opts.label }

  script.
    import '../atoms/dmc-icon.tag';

    handleClick(e) {
      e.preventUpdate = false;
      if (this.opts.isdisabled) {
        return;
      }
      this.opts.onchange && this.opts.onchange(!this.opts.ischecked);
    }
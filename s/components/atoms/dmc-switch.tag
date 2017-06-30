dmc-switch(class="Switch { opts.isactive ? 'Switch--active' : '' } { opts.isdisabled ? 'Switch--disabled' : ''}" onClick="{ handleClick }")
  .Switch__content
    .Switch__toggle
      .Switch__groove
      .Switch__knob
    virtual(if="{ !!opts.label }")
      .Switch__label { opts.label }

  script.
    handleClick(e) {
      e.preventUpdate = false;
      if (this.opts.isdisabled) {
        return;
      }
      this.opts.onchange && this.opts.onchange(!this.opts.isactive);
    }
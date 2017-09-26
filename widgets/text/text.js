import React from 'react';
import {Widget} from 'kitto';

import './text.scss';

class Text extends Widget {
  status() {
    if (!this.state.status) { return ""; }

    return`status-${this.state.status}`;
  }

  render() {
    return (
    <a href={this.state.url}>
      <div className={`${this.props.className} ${this.status()}`} style={{backgroundImage: `url(${this.state.imageUrl})`,
           backgroundRepeat: 'no-repeat', backgroundSize: 'cover', height: '350px'}}>
        <h1 className="title">{this.state.title || this.props.title}</h1>
        <h3>{this.state.text || this.props.text}</h3>
        <p className="more-info">{this.state.moreinfo || this.props.moreinfo}</p>
        <p className="updated-at">{this.updatedAt(this.state.updated_at)}</p>
      </div>
    </a>
    );
  }
};

Widget.mount(Text);
export default Text;

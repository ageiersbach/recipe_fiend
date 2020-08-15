import React from 'react';
import { shallow } from 'enzyme';
import FlashNotice from 'components/FlashNotice';

describe('FlashNotice', ()=> {
  it('should render a new message', ()=> {
    const notice = shallow(
      <FlashNotice message="Some message" />
    );
    expect(notice.text()).toBe('Some message');
  });

});

import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Springbootresponse } from './springbootresponse';

describe('Springbootresponse', () => {
  let component: Springbootresponse;
  let fixture: ComponentFixture<Springbootresponse>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Springbootresponse],
    }).compileComponents();

    fixture = TestBed.createComponent(Springbootresponse);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

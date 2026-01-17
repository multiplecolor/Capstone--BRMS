import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EditTemplate } from './edit-template';

describe('EditTemplate', () => {
  let component: EditTemplate;
  let fixture: ComponentFixture<EditTemplate>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [EditTemplate]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EditTemplate);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

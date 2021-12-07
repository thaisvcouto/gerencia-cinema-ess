import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TelaAreaFuncionarioComponent } from './tela-area-funcionario.component';

describe('TelaAreaFuncionarioComponent', () => {
  let component: TelaAreaFuncionarioComponent;
  let fixture: ComponentFixture<TelaAreaFuncionarioComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TelaAreaFuncionarioComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(TelaAreaFuncionarioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

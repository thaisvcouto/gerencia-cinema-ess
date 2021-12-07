import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TelaFilmesComponent } from './tela-filmes.component';

describe('TelaFilmesComponent', () => {
  let component: TelaFilmesComponent;
  let fixture: ComponentFixture<TelaFilmesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TelaFilmesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(TelaFilmesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

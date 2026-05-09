\version "2.24.2"
\include "header.ly"

% Tenoristae intonant: \clef tenor \relative c'
% g a( h) h h | h h h | h( c) h | h a a( h)
% Benedictus | Dominus | Deus | Israel
% schwarze Quadradnoten ohne Hals

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key g \major \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    h'1
    h
    h2 h
    h1
    h2 h
    a1
    gis2 gis
    a h
    c1
    h
    a2 g
    fis1
    e
  }
}

SopranoLyrics = \lyricmode {
  Qui --
  a
  vi -- si --
  ta --
  vit et
  fe --
  cit re --
  dem -- pti --
  o --
  nem
  ple -- bis
  su --
  ae
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key g \major \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    g'1
    g
    g2 g
    g1
    g2 g
    e1
    e
    r2 d
    e fis
    g g
    fis e
    e dis
    e a,
  }
}

AltoLyrics = \lyricmode {
  Qui --
  a
  vi -- si --
  ta --
  vit et
  fe --
  cit re --
  dem -- pti --
  o --
  nem
  ple -- bis
  su -- _
  ae, "re -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key g \major \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    d1
    d
    d2 d
    d1
    d2 d
    c1
    h2 h
    c h
    a1
    g
    d'2 e
    h1
    c2 c
  }
}

TenoreLyrics = \lyricmode {
  Qui --
  a
  vi -- si --
  ta --
  vit et
  fe --
  cit re --
  dem -- pti --
  o --
  nem
  ple -- bis
  su --
  ae, "re -"
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key g \major \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    g'1
    g
    g2 g
    g1
    g2 g
    a1
    e
    R1*5
    a1
  }
}

BassoLyrics = \lyricmode {
  Qui --
  a
  vi -- si --
  ta --
  vit et
  fe --
  cit

  "re -"
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key g \major \time 2/2 \tempoMarkup "[no tempo]"
    g'1
    g
    g
    g
    g
    a
    e2 \clef tenor h'
    c h
    a1
    g
    d'2 e
    h1
    \clef bass
    a
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  r
  r
  <_+>2 <\t>
  <6>1
  <5>2 <6>
  r1
  <3>2 <7>
  <4> <_+>
  <5>1
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}

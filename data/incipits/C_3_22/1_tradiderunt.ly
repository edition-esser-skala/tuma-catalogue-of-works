\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 2/2 \tempoMarkup "Allabreve"
    a'4\f a f a
    f' a, f a
    b f' c f
    b, f d' b
    a a f a
    f' a, f a
    g g c e,
    d c' d, h'
    c e f a,
    g f' g, e'
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 2/2 \tempoMarkup "Allabreve"
    f4\f f a f
    a, f' a f
    d2 c
    d4 d f d
    c2 c~
    c c
    c e
    d g4 f
    e g a f
    d g e g
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key f \major \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    a'1^\tutti
    a
    b2 c
    b1
    a2 a~
    a a
    g g
    g1
    g2 a4 a
    g1
  }
}

SopranoLyrics = \lyricmode {
  Tra --
  di --
  de -- runt
  me
  in ma --
  nus
  im -- pi --
  o --
  rum, im -- pi --
  "o -"
}

Alto = {
  \relative c' {
    \clef alto
    \key f \major \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    f1^\tutti
    f
    f2 f
    f1
    f2 f~
    f f
    e e
    d1
    e2 f~
    f e
  }
}

AltoLyrics = \lyricmode {
  Tra --
  di --
  de -- runt
  me
  in ma --
  nus
  im -- pi --
  o --
  rum, im --
  "pi -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \major \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    c1^\tutti
    d
    d2 c
    d1
    c2 c~
    c c
    c c
    c h
    c1
    d2 c
  }
}

TenoreLyrics = \lyricmode {
  Tra --
  di --
  de -- runt
  me
  in ma --
  nus
  im -- pi --
  o -- _
  rum,
  im \hy
}

Basso = {
  \relative c {
    \clef bass
    \key f \major \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    f1^\tutti
    d
    b2 a
    b1
    f2 f'~
    f d
    e c
    g' g,
    c f4 f
    b,!2 c
  }
}

BassoLyrics = \lyricmode {
  Tra --
  di --
  de -- runt
  me
  in ma --
  nus
  im -- pi --
  o -- _
  rum, im -- pi --
  o \hy
}

Organo = {
  \relative c {
    \clef bass
    \key f \major \time 2/2 \tempoMarkup "Allabreve"
    \mvTr f1\f-\tutti
    d
    b2 a
    b1
    f2 f'~
    f d
    e c
    g1
    c2 f
    b,! c
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <6>
  r1
  r
  r2 <7>
  <6>1
  <4>2 <_!>
  r1
  <6 5>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
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

\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    e'1
    e2 e16( f) e( f) d( e) d( e)
    c1
    c2 c16( d) c( d) b( c) \hA b( c)
    a2 a
    gis h!4 e8 cis
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r2 c'
    c c16( d) c( d) h( c) h( c)
    a4 r g2
    g~ g8 e16 f g a g a
    f2 fis
    e e4 e8 e
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    e'1^\tutti
    e2 r
    c1
    c2 r
    a1
    gis2 h4 e8 cis
  }
}

SopranoLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san --
  ctus Do -- mi -- nus
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 a'^\tutti
    a r
    r g
    g r
    f fis
    e e4 e8 e
  }
}

AltoLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san -- _
  ctus Do -- mi -- nus
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 c^\tutti
    c r
    r e
    e r
    c1
    h2 h4 h8 e
  }
}

TenoreLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san --
  ctus Do -- mi -- nus
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 a^\tutti
    a r
    r e'
    e r
    f4. e8 dis2
    e e4 e8 e
  }
}

BassoLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san -- _ _
  ctus Do -- mi -- nus
}

Organo = {
  \relative c {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    e''2-\tutti \clef bass a,,,~
    a r
    \clef soprano c'' \clef bass e,,
    e r
    f4. e8 dis2
    e e4 e8 e
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <6>
  r1
  r2 <7 5>
  <5 _+>2. <\t \t>8 <6\\ \t>
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
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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

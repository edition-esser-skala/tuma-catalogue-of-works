\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Adagio"
    R1*2
    d2 d4 g
    g2 fis\trill
    g4 d(\p es) c(
    d) b( c) fis(
    g) g\f b g
    d'2. d4
    b1
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Adagio"
    R1
    g2. g4
    b1
    c
    d4 b(\p c) a(
    b) g( a) a(
    g) r r2
    fis'4\f fis a a
    a2 g
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 2/2 \tempoMarkup "Adagio" \autoBeamOff
    R1*2
    d2 d4 g
    g2 fis
    g4 r r2
    R1
    g4 g b g
    d'2. d4
    b1
  }
}

SopranoLyrics = \lyricmode {
  Te -- ne -- brae %3
  fa -- ctae
  sunt,

  dum cru -- ci -- fi --
  xis -- sent
  "Je -"
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 2/2 \tempoMarkup "Adagio" \autoBeamOff
    R1
    g2 g4 g
    b2 b
    c2. c4
    d r r2
    R1*2
    fis4 fis a a
    a2 g
  }
}

AltoLyrics = \lyricmode {
  Te -- ne -- brae
  fa -- ctae,
  fa -- ctae
  sunt,

  dum cru -- ci -- fi --
  xis -- sent
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 2/2 \tempoMarkup "Adagio" \autoBeamOff
    d,2 d4 d
    es2. es4
    g1
    a2. a4
    b r r2
    R1*2
    a4 a a d
    d2. d4
  }
}

TenoreLyrics = \lyricmode {
  Te -- ne -- brae
  fa -- ctae
  sunt,
  fa -- ctae
  sunt,

  dum cru -- ci -- fi --
  xis -- sent
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 2/2 \tempoMarkup "Adagio" \autoBeamOff
    g2 g4 g
    c2. c4
    b1
    a2. a4
    g r r2
    R1*2
    d'4 d fis d
    g a b c
  }
}

BassoLyrics = \lyricmode {
  Te -- ne -- brae
  fa -- ctae
  sunt,
  fa -- ctae
  sunt,

  dum cru -- ci -- fi --
  xis -- _ sent
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Adagio"
    g2 g4 g
    c2. c4
    b1
    a2. a4
    g r r2
    R1
    \clef soprano g''4 g b g
    \clef bass d, d fis d
    g a b c
  }
}

BassFigures = \figuremode {
  r1
  r
  <6>
  <7>2 <6\\>
  r1
  r
  r
  <_+>
  <9>2 <6>
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

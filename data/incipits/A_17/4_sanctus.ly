\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key d \dorian \time 3/2 \tempoMarkup "Larghetto"
    R1.*2
    d2\f d r
    R1.*2
    c2\f c r
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 3/2 \tempoMarkup "Larghetto"
    R1.*2
    f,2 f r
    R1.*2
    a2\f a r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 3/2 \tempoMarkup "Larghetto"
    R1.*2
    f'2\f f, r
    R1.*2
    a'2\f a, r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 3/2 \tempoMarkup "Larghetto"
    R1.*2
    d'2\f d r
    R1.*2
    f2\f f, r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
    R1.*2
    a'2^\tutti a r
    c4(^\solo d c b a g)
    a( b a g) f( e)
    f2^\tutti f r
  }
}

SopranoLyrics = \lyricmode {
  San -- ctus,
  san --
  _ ctus,
  san -- ctus,
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
    a'4^\solo( b a g f e)
    f( g f e) d( cis)
    d2^\tutti d r
    R1.*2
    c2 c r
  }
}

AltoLyrics = \lyricmode {
  San --
  _ ctus,
  san -- ctus,

  san -- ctus,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
    R1.
    a4(^\solo b a g) f( e)
    f2^\tutti f r
    R1.
    c'4(^\solo d c b) a( g)
    a2^\tutti a r
  }
}

TenoreLyrics = \lyricmode {
  San -- ctus,
  san -- ctus,

  san -- ctus,
  san -- ctus,
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
    R1.*2
    d2^\tutti d r
    R1.*2
    f2 f, r
  }
}

BassoLyrics = \lyricmode {
  San -- ctus,

  san -- ctus,
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 3/2 \tempoMarkup "Larghetto"
    d1-\solo cis2
    d1 a2
    d1-\tutti r2
    f1-\solo c2
    f,1 c'2
    f-\tutti f, r
  }
}

BassFigures = \figuremode {
  r1.
  r
  r
  r
  r
  r
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
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

\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 3/2 \tempoMarkup "Largo"
    g''2(\p as) h,
    c es4( d) g f
    es d c2. d4
    b! g' g fis fis2
    f es d
    es4( c) c h b2 \gotoBar "12"
    c2\f c es
    es1.
    g2(\p as) h,
    c1.\f
    c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 3/2 \tempoMarkup "Largo"
    R1.*2
    c'2\p es fis,
    g b4( a) d( c)
    h2 c g
    g g4 f d2 \gotoBar "12"
    c2\f c' c
    c1.
    c2\p f,1
    es\f e2
    f1.
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 3/2 \tempoMarkup "Largo" \autoBeamOff
    R1.*6 \gotoBar "12"
    c'1^\tutti c2
    c1 c2
    R1.
    c1 c2
    c1 c2
  }
}

SopranoLyrics = \lyricmode {
  Mi -- se --
  re -- re,

  mi -- se --
  re -- re,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 3/2 \tempoMarkup "Largo" \autoBeamOff
    R1.*6 \gotoBar "12"
    g'1^\tutti g2
    g1 g2
    R1.
    g1 g2
    as1 as2
  }
}

AltoLyrics = \lyricmode {
  Mi -- se --
  re -- re,

  mi -- se --
  re -- re,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 3/2 \tempoMarkup "Largo" \autoBeamOff
    R1.*6 \gotoBar "12"
    es1^\tutti es2
    es1 es2
    R1.
    es1 e2
    f1 f2
  }
}

TenoreLyrics = \lyricmode {
  Mi -- se --
  re -- re,

  mi -- se --
  re -- re,
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 3/2 \tempoMarkup "Largo" \autoBeamOff
    R1.*6 \gotoBar "12"
    c'1^\tutti c2
    c,1 c2
    R1.
    c'1 c2
    as1 as2
  }
}

BassoLyrics = \lyricmode {
  Mi -- se --
  re -- re,

  mi -- se --
  re -- re,
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 3/2 \tempoMarkup "Largo"
    R1.*4
    \mvTrr g'2(\pp-\solo as) h,
    c es4( d) g( f) \gotoBar "12"
    c2-\tutti c'1
    c,1.
    R
    c'
    as
  }
}

BassFigures = \figuremode {
  r1.*4
  <7 _!>2 <5>1
  r1.
  r
  r
  r
  <_->1 <_!>2
  <6>1.
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
